package zendesk.belvedere;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.app.AppCompatDialogFragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import zendesk.belvedere.p041ui.C2612R;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereDialog.class */
public class BelvedereDialog extends AppCompatDialogFragment {
    private static final int REQUEST_ID = 1212;
    private static final String STATE_WAITING_FOR_PERMISSION = "waiting_for_permission";
    private ListView listView;
    private List<MediaIntent> mediaIntents;
    private PermissionStorage preferences;
    private MediaIntent waitingForPermission;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereDialog$Adapter.class */
    public static class Adapter extends ArrayAdapter<MediaIntent> {
        private Context context;

        Adapter(Context context, int i, List<MediaIntent> list) {
            super(context, i, list);
            this.context = context;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = LayoutInflater.from(this.context).inflate(C2612R.C2616layout.belvedere_dialog_row, viewGroup, false);
            }
            MediaIntent item = getItem(i);
            AttachmentSource from = AttachmentSource.from(item, this.context);
            ((ImageView) view2.findViewById(C2612R.C2615id.belvedere_dialog_row_image)).setImageDrawable(ContextCompat.getDrawable(this.context, from.getDrawable()));
            ((TextView) view2.findViewById(C2612R.C2615id.belvedere_dialog_row_text)).setText(from.getText());
            view2.setTag(item);
            return view2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereDialog$AttachmentSource.class */
    private static class AttachmentSource {
        private final int drawable;
        private final String text;

        private AttachmentSource(int i, String str) {
            this.drawable = i;
            this.text = str;
        }

        public static AttachmentSource from(MediaIntent mediaIntent, Context context) {
            return mediaIntent.getTarget() == 2 ? new AttachmentSource(C2612R.C2614drawable.belvedere_ic_camera, context.getString(C2612R.string.belvedere_dialog_camera)) : mediaIntent.getTarget() == 1 ? new AttachmentSource(C2612R.C2614drawable.belvedere_ic_image, context.getString(C2612R.string.belvedere_dialog_gallery)) : new AttachmentSource(-1, "");
        }

        public int getDrawable() {
            return this.drawable;
        }

        public String getText() {
            return this.text;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereDialog$StartActivity.class */
    public interface StartActivity {
        Context getContext();

        void startActivity(MediaIntent mediaIntent);
    }

    private void askForPermission(MediaIntent mediaIntent) {
        this.waitingForPermission = mediaIntent;
        requestPermissions(new String[]{mediaIntent.getPermission()}, REQUEST_ID);
    }

    private void fillList(List<MediaIntent> list) {
        if (getParentFragment() != null) {
            final Fragment parentFragment = getParentFragment();
            fillListView(new StartActivity() { // from class: zendesk.belvedere.BelvedereDialog.1
                @Override // zendesk.belvedere.BelvedereDialog.StartActivity
                public Context getContext() {
                    return parentFragment.getContext();
                }

                @Override // zendesk.belvedere.BelvedereDialog.StartActivity
                public void startActivity(MediaIntent mediaIntent) {
                    mediaIntent.open(parentFragment);
                }
            }, list);
        } else if (getActivity() != null) {
            final FragmentActivity activity = getActivity();
            fillListView(new StartActivity() { // from class: zendesk.belvedere.BelvedereDialog.2
                @Override // zendesk.belvedere.BelvedereDialog.StartActivity
                public Context getContext() {
                    return activity;
                }

                @Override // zendesk.belvedere.BelvedereDialog.StartActivity
                public void startActivity(MediaIntent mediaIntent) {
                    mediaIntent.open(activity);
                }
            }, list);
        } else if (getFragmentManager() != null) {
            dismiss();
        }
    }

    private void fillListView(final StartActivity startActivity, List<MediaIntent> list) {
        this.listView.setAdapter((ListAdapter) new Adapter(startActivity.getContext(), C2612R.C2616layout.belvedere_dialog_row, list));
        this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: zendesk.belvedere.BelvedereDialog.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(@NonNull AdapterView<?> adapterView, @NonNull View view, int i, long j) {
                if (view.getTag() instanceof MediaIntent) {
                    BelvedereDialog.this.openBelvedereIntent((MediaIntent) view.getTag(), startActivity);
                }
            }
        });
        if (list.size() == 0) {
            dismissAllowingStateLoss();
        } else if (list.size() == 1) {
            openBelvedereIntent(list.get(0), startActivity);
        }
    }

    private List<MediaIntent> getMediaIntents() {
        List<MediaIntent> intents = BelvedereUi.getUiConfig(getArguments()).getIntents();
        ArrayList arrayList = new ArrayList();
        for (MediaIntent mediaIntent : intents) {
            if (TextUtils.isEmpty(mediaIntent.getPermission()) || !this.preferences.shouldINeverEverAskForThatPermissionAgain(mediaIntent.getPermission()) || mediaIntent.isAvailable()) {
                arrayList.add(mediaIntent);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBelvedereIntent(MediaIntent mediaIntent, StartActivity startActivity) {
        if (TextUtils.isEmpty(mediaIntent.getPermission())) {
            startActivity.startActivity(mediaIntent);
            dismiss();
            return;
        }
        askForPermission(mediaIntent);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.preferences = new PermissionStorage(getContext());
        if (bundle != null) {
            this.waitingForPermission = (MediaIntent) bundle.getParcelable(STATE_WAITING_FOR_PERMISSION);
        }
        setStyle(1, getTheme());
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C2612R.C2616layout.belvedere_dialog, viewGroup, false);
        this.listView = (ListView) inflate.findViewById(C2612R.C2615id.belvedere_dialog_listview);
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i != REQUEST_ID || this.waitingForPermission == null || TextUtils.isEmpty(this.waitingForPermission.getPermission())) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (strArr.length > 0 && strArr[0].equals(this.waitingForPermission.getPermission())) {
            if (iArr.length > 0 && iArr[0] == 0) {
                if (getParentFragment() != null) {
                    this.waitingForPermission.open(getParentFragment());
                } else if (getActivity() != null) {
                    this.waitingForPermission.open(getActivity());
                }
                dismissAllowingStateLoss();
            } else if (iArr.length > 0 && iArr[0] == -1 && !shouldShowRequestPermissionRationale(this.waitingForPermission.getPermission())) {
                this.preferences.neverEverAskForThatPermissionAgain(this.waitingForPermission.getPermission());
                this.mediaIntents = getMediaIntents();
                fillList(this.mediaIntents);
            }
            this.waitingForPermission = null;
        }
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(STATE_WAITING_FOR_PERMISSION, this.waitingForPermission);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mediaIntents = getMediaIntents();
        fillList(this.mediaIntents);
    }
}
