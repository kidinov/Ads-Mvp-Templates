package ${packageName};

import android.os.Bundle;

import ${applicationPackage}.R;
import ${applicationPackage}.ui.base.BaseActivity;
import javax.inject.Inject;
import butterknife.ButterKnife;

public class ${activityClass} extends BaseActivity <#if generateView>implements ${viewName}</#if>{
<#if generatePresenter>
    @Inject
    private ${presenterName} presenter;
</#if>
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getActivityComponent().inject(this);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
        ButterKnife.bind(this);
</#if>
<#if generatePresenter>
    presenter.attachView(this);
</#if>
    }

<#if generatePresenter>
    @Override
    protected void onDestroy() {
        presenter.detachView();
        super.onDestroy();
    }
</#if>
}