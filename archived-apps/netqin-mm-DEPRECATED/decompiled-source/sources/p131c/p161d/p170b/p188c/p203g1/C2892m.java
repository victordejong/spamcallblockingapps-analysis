package p131c.p161d.p170b.p188c.p203g1;

import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* renamed from: c.d.b.c.g1.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/m.class */
public final class C2892m {
    /* renamed from: a */
    public static int m28611a(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        m28615a();
        m28613a(35633, str, glCreateProgram);
        m28613a(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            m28612a("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        m28615a();
        return glCreateProgram;
    }

    /* renamed from: a */
    public static int m28609a(String[] strArr, String[] strArr2) {
        return m28611a(TextUtils.join("\n", strArr), TextUtils.join("\n", strArr2));
    }

    /* renamed from: a */
    public static FloatBuffer m28614a(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    /* renamed from: a */
    public static FloatBuffer m28610a(float[] fArr) {
        return (FloatBuffer) m28614a(fArr.length).put(fArr).flip();
    }

    /* renamed from: a */
    public static void m28615a() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                C2894o.m28597b("GlUtil", "glError " + GLU.gluErrorString(glGetError));
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m28613a(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            m28612a(GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        m28615a();
    }

    /* renamed from: a */
    public static void m28612a(String str) {
        C2894o.m28597b("GlUtil", str);
    }

    /* renamed from: b */
    public static int m28608b() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        m28615a();
        return iArr[0];
    }
}
