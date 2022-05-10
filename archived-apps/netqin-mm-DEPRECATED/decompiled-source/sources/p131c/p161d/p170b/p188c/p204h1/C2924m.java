package p131c.p161d.p170b.p188c.p204h1;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2892m;
/* renamed from: c.d.b.c.h1.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/m.class */
public class C2924m implements GLSurfaceView.Renderer, AbstractC2923l {

    /* renamed from: k */
    public static final float[] f10578k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

    /* renamed from: l */
    public static final float[] f10579l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

    /* renamed from: m */
    public static final float[] f10580m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

    /* renamed from: n */
    public static final String[] f10581n = {"y_tex", "u_tex", "v_tex"};

    /* renamed from: o */
    public static final FloatBuffer f10582o = C2892m.m28610a(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* renamed from: a */
    public final GLSurfaceView f10583a;

    /* renamed from: e */
    public int f10587e;

    /* renamed from: g */
    public int f10589g;

    /* renamed from: j */
    public C2921k f10592j;

    /* renamed from: b */
    public final int[] f10584b = new int[3];

    /* renamed from: c */
    public final AtomicReference<C2921k> f10585c = new AtomicReference<>();

    /* renamed from: d */
    public FloatBuffer[] f10586d = new FloatBuffer[3];

    /* renamed from: f */
    public int[] f10588f = new int[3];

    /* renamed from: h */
    public int[] f10590h = new int[3];

    /* renamed from: i */
    public int[] f10591i = new int[3];

    public C2924m(GLSurfaceView gLSurfaceView) {
        this.f10583a = gLSurfaceView;
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.f10590h;
            this.f10591i[i] = -1;
            iArr[i] = -1;
        }
    }

    /* renamed from: a */
    public final void m28492a() {
        GLES20.glGenTextures(3, this.f10584b, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f10587e, f10581n[i]), i);
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.f10584b[i]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        C2892m.m28615a();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        C2921k andSet = this.f10585c.getAndSet(null);
        if (!(andSet == null && this.f10592j == null)) {
            if (andSet != null) {
                C2921k kVar = this.f10592j;
                if (kVar != null) {
                    kVar.m28494f();
                }
                this.f10592j = andSet;
            }
            C2921k kVar2 = this.f10592j;
            float[] fArr = f10579l;
            int i = kVar2.f10576f;
            if (i == 1) {
                fArr = f10578k;
            } else if (i == 3) {
                fArr = f10580m;
            }
            GLES20.glUniformMatrix3fv(this.f10589g, 1, false, fArr, 0);
            int i2 = 0;
            while (i2 < 3) {
                int i3 = i2 == 0 ? kVar2.f10573c : (kVar2.f10573c + 1) / 2;
                GLES20.glActiveTexture(33984 + i2);
                GLES20.glBindTexture(3553, this.f10584b[i2]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, kVar2.f10575e[i2], i3, 0, 6409, 5121, kVar2.f10574d[i2]);
                i2++;
            }
            int i4 = (r0[0] + 1) / 2;
            int[] iArr = {kVar2.f10572b, i4, i4};
            for (int i5 = 0; i5 < 3; i5++) {
                if (this.f10590h[i5] != iArr[i5] || this.f10591i[i5] != kVar2.f10575e[i5]) {
                    C2877e.m28731b(kVar2.f10575e[i5] != 0);
                    float f = iArr[i5] / kVar2.f10575e[i5];
                    this.f10586d[i5] = C2892m.m28610a(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f, 0.0f, f, 1.0f});
                    GLES20.glVertexAttribPointer(this.f10588f[i5], 2, 5126, false, 0, (Buffer) this.f10586d[i5]);
                    this.f10590h[i5] = iArr[i5];
                    this.f10591i[i5] = kVar2.f10575e[i5];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            C2892m.m28615a();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int a = C2892m.m28611a("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.f10587e = a;
        GLES20.glUseProgram(a);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f10587e, "in_pos");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) f10582o);
        this.f10588f[0] = GLES20.glGetAttribLocation(this.f10587e, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.f10588f[0]);
        this.f10588f[1] = GLES20.glGetAttribLocation(this.f10587e, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.f10588f[1]);
        this.f10588f[2] = GLES20.glGetAttribLocation(this.f10587e, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.f10588f[2]);
        C2892m.m28615a();
        this.f10589g = GLES20.glGetUniformLocation(this.f10587e, "mColorConversion");
        C2892m.m28615a();
        m28492a();
        C2892m.m28615a();
    }
}
