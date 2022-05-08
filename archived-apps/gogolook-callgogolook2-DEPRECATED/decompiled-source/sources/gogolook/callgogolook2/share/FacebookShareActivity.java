package gogolook.callgogolook2.share;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Random;
import org.json.JSONObject;
import p081h.p154f.C6148s;
import p459j.p460a.p471b1.p473b.C11511b;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13956d2;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/FacebookShareActivity.class */
public class FacebookShareActivity extends Activity {

    /* renamed from: a */
    public Activity f12887a;

    /* renamed from: b */
    public ImageView f12888b;

    /* renamed from: c */
    public ImageView f12889c;

    /* renamed from: d */
    public TextView f12890d;

    /* renamed from: e */
    public Button f12891e;

    /* renamed from: f */
    public EditText f12892f;

    /* renamed from: g */
    public FrameLayout f12893g;

    /* renamed from: i */
    public Bundle f12895i;

    /* renamed from: j */
    public Bitmap f12896j;

    /* renamed from: k */
    public String f12897k;

    /* renamed from: l */
    public boolean f12898l;

    /* renamed from: m */
    public C13956d2.AbstractC13962f f12899m;

    /* renamed from: n */
    public C13956d2 f12900n;

    /* renamed from: p */
    public int f12902p;

    /* renamed from: h */
    public GraphRequest f12894h = null;

    /* renamed from: o */
    public int f12901o = 0;

    /* renamed from: gogolook.callgogolook2.share.FacebookShareActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/FacebookShareActivity$a.class */
    public class C5227a implements C13956d2.AbstractC13962f {

        /* renamed from: a */
        public final /* synthetic */ TextView f12903a;

        public C5227a(TextView textView) {
            this.f12903a = textView;
        }

        @Override // p459j.p460a.p582w0.C13956d2.AbstractC13962f
        /* renamed from: a */
        public void mo2980a(Profile profile) {
            if (profile != null) {
                FacebookShareActivity.this.f12902p = 1;
                this.f12903a.setText(profile.m35389a());
            }
        }

        @Override // p459j.p460a.p582w0.C13956d2.AbstractC13962f
        /* renamed from: b */
        public void mo2979b(Profile profile) {
            if (profile != null) {
                FacebookShareActivity.this.f12902p = 1;
                this.f12903a.setText(profile.m35389a());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.share.FacebookShareActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/FacebookShareActivity$b.class */
    public class View$OnClickListenerC5228b implements View.OnClickListener {
        public View$OnClickListenerC5228b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FacebookShareActivity.this.m26055e();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.FacebookShareActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/FacebookShareActivity$c.class */
    public class View$OnClickListenerC5229c implements View.OnClickListener {
        public View$OnClickListenerC5229c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FacebookShareActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.share.FacebookShareActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/FacebookShareActivity$d.class */
    public class C5230d implements GraphRequest.AbstractC2230f {
        public C5230d() {
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            if (sVar.m23705a() == null) {
                C14687h.m861a(FacebookShareActivity.this.f12887a, FacebookShareActivity.this.getString(R$string.share_share_success), 0).m858c();
                FacebookShareActivity.this.f12902p = 2;
                C11511b.m9421d(new File(C13884a4.m3171g()));
                return;
            }
            FacebookShareActivity.this.m26054f();
        }
    }

    /* renamed from: a */
    public String m26062a(int i) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getInstance(Locale.US);
        decimalFormat.applyPattern("#,###");
        return decimalFormat.format(i);
    }

    /* renamed from: a */
    public final void m26063a() {
        this.f12892f = (EditText) findViewById(R$id.et_caption);
        this.f12888b = (ImageView) findViewById(R$id.iv_preview);
        this.f12891e = (Button) findViewById(R$id.btn_post);
        this.f12889c = (ImageView) findViewById(R$id.iv_back);
        this.f12890d = (TextView) findViewById(R$id.tv_title);
        this.f12893g = (FrameLayout) findViewById(R$id.fl_preview);
    }

    /* renamed from: b */
    public final Bitmap m26059b() {
        if (this.f12901o == 0) {
            Bitmap bitmap = this.f12896j;
            if (bitmap != null) {
                return bitmap;
            }
            return null;
        }
        FrameLayout frameLayout = this.f12893g;
        frameLayout.layout(0, 0, frameLayout.getMeasuredWidth(), this.f12893g.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(this.f12893g.getMeasuredHeight(), this.f12893g.getMeasuredWidth(), Bitmap.Config.ARGB_8888);
        this.f12893g.draw(new Canvas(createBitmap));
        this.f12893g.setVisibility(8);
        this.f12893g.setVisibility(0);
        this.f12896j = createBitmap;
        return createBitmap;
    }

    /* renamed from: c */
    public final byte[] m26057c() {
        Bitmap b = m26059b();
        if (b == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        b.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: d */
    public final void m26056d() {
        this.f12897k = this.f12895i.getString("mCaption");
        this.f12898l = this.f12895i.getBoolean("can_edit", false);
        this.f12892f.setText(this.f12897k);
        int i = this.f12901o;
        if (i == 0) {
            this.f12888b.setVisibility(0);
            this.f12893g.setVisibility(8);
            if (getIntent().getBooleanExtra("share_image", false)) {
                if (!new File(C13884a4.m3171g()).exists()) {
                    finish();
                }
                this.f12896j = BitmapFactory.decodeFile(C13884a4.m3171g());
                this.f12888b.setImageBitmap(this.f12896j);
            }
        } else if (i == 1) {
            this.f12888b.setVisibility(8);
            this.f12893g.setVisibility(0);
            View inflate = LayoutInflater.from(this.f12887a).inflate(R$layout.share_block, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_name);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
            TextView textView3 = (TextView) inflate.findViewById(R$id.tv_block_count);
            TextView textView4 = (TextView) inflate.findViewById(R$id.tv_time_saved);
            textView.setText("");
            this.f12899m = new C5227a(textView);
            this.f12900n.m2994a(this, this.f12899m);
            Random random = new Random();
            int a = C13915b3.m3066a("prefs_taotal_block_counts", 0);
            int nextInt = ((a * 65) + random.nextInt(120)) - 60;
            int i2 = nextInt;
            if (nextInt < 60) {
                i2 = random.nextInt(55) + 65;
            }
            textView2.setText(String.format(MyApplication.m29013o().getString(R$string.share_notification_callwasblocked_image_text), Integer.valueOf(a), m26062a(i2)));
            textView3.setText(String.valueOf(a));
            textView4.setText(m26062a(i2));
            this.f12893g.addView(inflate);
        }
        m26054f();
        this.f12891e.setOnClickListener(new View$OnClickListenerC5228b());
        View$OnClickListenerC5229c cVar = new View$OnClickListenerC5229c();
        this.f12889c.setOnClickListener(cVar);
        this.f12890d.setOnClickListener(cVar);
        if (!this.f12898l) {
            m26055e();
        }
    }

    /* renamed from: e */
    public void m26055e() {
        m26054f();
        this.f12894h = GraphRequest.m35460a(AccessToken.m35507B(), "me/photos", (JSONObject) null, new C5230d());
        Bundle j = this.f12894h.m35414j();
        j.putByteArray("picture", m26057c());
        j.putString("caption", this.f12892f.getText().toString());
        this.f12894h.m35464a(j);
        this.f12894h.m35430c();
        this.f12887a.finish();
    }

    /* renamed from: f */
    public final void m26054f() {
        if (AccessToken.m35507B() != null) {
            this.f12900n.m2988d(this);
            this.f12900n.m2989c(this);
            return;
        }
        this.f12900n.m2990b(this.f12887a);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f12900n.m2997a(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_facebook_share);
        this.f12887a = this;
        this.f12895i = getIntent().getExtras();
        this.f12900n = new C13956d2();
        Bundle bundle2 = this.f12895i;
        if (bundle2 == null || bundle2.size() < 1) {
            finish();
            return;
        }
        this.f12901o = this.f12895i.getInt("share_type", 0);
        m26063a();
        m26056d();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Bitmap bitmap = this.f12896j;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f12896j.recycle();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
