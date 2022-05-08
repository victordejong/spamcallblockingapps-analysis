package org.mozilla.javascript;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ConsString.class */
public class ConsString implements CharSequence, Serializable {
    private static final long serialVersionUID = -8432806714471372570L;
    private int depth = 1;
    private final int length;

    /* renamed from: s1 */
    private CharSequence f770s1;

    /* renamed from: s2 */
    private CharSequence f771s2;

    public ConsString(CharSequence charSequence, CharSequence charSequence2) {
        this.f770s1 = charSequence;
        this.f771s2 = charSequence2;
        this.length = charSequence.length() + charSequence2.length();
        if (charSequence instanceof ConsString) {
            this.depth += ((ConsString) charSequence).depth;
        }
        if (charSequence2 instanceof ConsString) {
            this.depth += ((ConsString) charSequence2).depth;
        }
        if (this.depth > 2000) {
            flatten();
        }
    }

    private static void appendFragment(CharSequence charSequence, StringBuilder sb) {
        if (charSequence instanceof ConsString) {
            ((ConsString) charSequence).appendTo(sb);
        } else {
            sb.append(charSequence);
        }
    }

    private void appendTo(StringBuilder sb) {
        synchronized (this) {
            appendFragment(this.f770s1, sb);
            appendFragment(this.f771s2, sb);
        }
    }

    private String flatten() {
        String str;
        synchronized (this) {
            if (this.depth > 0) {
                StringBuilder sb = new StringBuilder(this.length);
                appendTo(sb);
                this.f770s1 = sb.toString();
                this.f771s2 = "";
                this.depth = 0;
            }
            str = (String) this.f770s1;
        }
        return str;
    }

    private Object writeReplace() {
        return toString();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return (this.depth == 0 ? (String) this.f770s1 : flatten()).charAt(i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.length;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return (this.depth == 0 ? (String) this.f770s1 : flatten()).substring(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.depth == 0 ? (String) this.f770s1 : flatten();
    }
}
