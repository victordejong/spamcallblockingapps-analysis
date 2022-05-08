package gogolook.callgogolook2.photo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompat;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.myprofile.FlagActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14137r4;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/photo/NdpPhotoViewActivity;", "Lgogolook/callgogolook2/photo/PhotoViewActivity;", "()V", "e164", "", "isMine", "", "number", Payload.RESPONSE, "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onKeyDown", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "onPrepareOptionsMenu", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/NdpPhotoViewActivity.class */
public final class NdpPhotoViewActivity extends PhotoViewActivity {

    /* renamed from: k */
    public static final C5036a f12455k = new C5036a(null);

    /* renamed from: f */
    public String f12456f;

    /* renamed from: g */
    public String f12457g;

    /* renamed from: h */
    public String f12458h;

    /* renamed from: i */
    public boolean f12459i;

    /* renamed from: j */
    public HashMap f12460j;

    /* renamed from: gogolook.callgogolook2.photo.NdpPhotoViewActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/NdpPhotoViewActivity$a.class */
    public static final class C5036a {
        public C5036a() {
        }

        public /* synthetic */ C5036a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m26453a(Context context, List<String> list, String str, String str2, String str3) {
            C15149k.m377b(context, "context");
            C15149k.m377b(list, Constants.VIDEO_TRACKING_URLS_KEY);
            Intent intent = new Intent(context, NdpPhotoViewActivity.class);
            intent.putStringArrayListExtra("extra_photo_urls", new ArrayList<>(list));
            intent.putExtra("extra_number", str);
            intent.putExtra("extra_164", str2);
            intent.putExtra("extra_response", str3);
            return intent;
        }
    }

    @Override // gogolook.callgogolook2.photo.PhotoViewActivity
    /* renamed from: e */
    public View mo26423e(int i) {
        if (this.f12460j == null) {
            this.f12460j = new HashMap();
        }
        View view = (View) this.f12460j.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f12460j.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // gogolook.callgogolook2.photo.PhotoViewActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            m26446a(intent.getStringArrayListExtra("extra_photo_urls"));
            m26442g(intent.getIntExtra("extra_photo_index", 0));
            this.f12457g = intent.getStringExtra("extra_164");
            this.f12458h = intent.getStringExtra("extra_response");
            this.f12459i = intent.getBooleanExtra("extra_is_mine", false);
            this.f12456f = intent.getStringExtra("extra_number");
        }
        super.onCreate(bundle);
        m26445a(m26450F(), m26452D());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        getMenuInflater().inflate(R$menu.photo_viewer_action_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C15149k.m377b(keyEvent, NotificationCompat.CATEGORY_EVENT);
        return (i != 82 || !C15149k.m384a((Object) C14137r4.m2374d(), (Object) this.f12457g)) ? super.onKeyDown(i, keyEvent) : true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        int itemId = menuItem.getItemId();
        boolean z = true;
        if (itemId == 16908332) {
            onBackPressed();
        } else if (itemId != 2131361870) {
            z = super.onOptionsItemSelected(menuItem);
        } else {
            FlagActivity.m26920a(this, this.f12456f, this.f12457g, this.f12458h, true);
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        MenuItem findItem = menu.findItem(R$id.action_share);
        if (findItem != null) {
            findItem.setVisible(false);
        }
        MenuItem findItem2 = menu.findItem(R$id.action_download);
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        MenuItem findItem3 = menu.findItem(R$id.action_more);
        if (findItem3 != null) {
            boolean z = false;
            if (!C15149k.m384a((Object) C14137r4.m2374d(), (Object) this.f12457g)) {
                z = false;
                if (!this.f12459i) {
                    z = true;
                }
            }
            findItem3.setVisible(z);
        }
        return super.onPrepareOptionsMenu(menu);
    }
}
