package p131c.p396i.p397a.p404g;

import android.content.res.Configuration;
import android.os.Bundle;
/* renamed from: c.i.a.g.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/g/c.class */
public interface AbstractC6544c {

    /* renamed from: c.i.a.g.c$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/g/c$a.class */
    public static abstract class AbstractC6545a implements AbstractC6544c {
        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        /* renamed from: l0 */
        public void mo20551l0() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onCreate(Bundle bundle) {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onDestroy() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onLowMemory() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onPause() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onResume() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onSaveInstanceState(Bundle bundle) {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onStart() {
        }

        @Override // p131c.p396i.p397a.p404g.AbstractC6544c
        public void onTrimMemory(int i) {
        }
    }

    /* renamed from: c.i.a.g.c$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/g/c$b.class */
    public static abstract class AbstractC6546b extends AbstractC6545a implements Comparable<AbstractC6546b> {
        /* renamed from: a */
        public int m20550a() {
            return 0;
        }

        /* renamed from: a */
        public int compareTo(AbstractC6546b bVar) {
            return bVar.m20550a() - m20550a();
        }
    }

    /* renamed from: l0 */
    void mo20551l0();

    void onConfigurationChanged(Configuration configuration);

    void onCreate(Bundle bundle);

    void onDestroy();

    void onLowMemory();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onTrimMemory(int i);
}
