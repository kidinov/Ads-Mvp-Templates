package ${packageName};

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${applicationPackage}.R;
import ${applicationPackage}.ui.base.BaseActivity;
import javax.inject.Inject;
import butterknife.ButterKnife;

public class ${className} extends Fragment <#if generateView>implements ${viewName}</#if>{
<#if generatePresenter>
    @Inject
    private ${presenterName} presenter;
</#if>

    public static ${className} newInstance() {
        return new ${className}();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((BaseActivity) getActivity()).getActivityComponent().inject(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    <#if includeLayout>
        View view = inflater.inflate(R.layout.${fragmentName}, container, false);
        ButterKnife.bind(this, view);
     </#if>

        presenter.attachView(this);

        return view;
    }

<#if generatePresenter>
    @Override 
    public void onDestroyView() {
        presenter.detachView();
        super.onDestroyView();
    }
</#if>
}