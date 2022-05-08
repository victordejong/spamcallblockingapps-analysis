package com.tmobile.services.nameid.scamBlock;

import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import io.reactivex.Single;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��:\u0003\u0003\u0004\u0005B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter;", "<init>", "()V", "Model", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounter.class */
public final class ScamBlockCounter {

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J#\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\r\u0010\fR\u001c\u0010\u0013\u001a\u00020\u000e8&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model;", "Lkotlin/Any;", "Ljava/util/Date;", "cutoff", "Lio/reactivex/Single;", "", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "getBlockedCalls", "(Ljava/util/Date;)Lio/reactivex/Single;", "getReceivedCalls", "", "getScamsBlockedCount", "(Ljava/util/Date;)I", "getScamsReceivedCount", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "getState", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "setState", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "state", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model.class */
    public interface Model {
        /* renamed from: a */
        int mo6330a(@NotNull Date date);

        /* renamed from: b */
        int mo6329b(@NotNull Date date);

        @NotNull
        /* renamed from: d */
        Single<List<ActivityItem>> mo6328d(@NotNull Date date);

        @NotNull
        /* renamed from: f */
        Single<List<ActivityItem>> mo6327f(@NotNull Date date);

        @NotNull
        ScamBlock.State getState();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Presenter;", "Lkotlin/Any;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounter$Presenter.class */
    public interface Presenter {
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u001d\u0010\b\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$View;", "Lkotlin/Any;", "", "setBlockedMode", "()V", "", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "data", "setData", "(Ljava/util/List;)V", "setReceivedMode", "", "n", "setScamCallCount", "(I)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounter$View.class */
    public interface View {
        /* renamed from: E */
        void mo6326E();

        /* renamed from: a */
        void mo6319a(int i);

        /* renamed from: f */
        void mo6318f(@NotNull List<? extends ActivityItem> list);

        /* renamed from: g0 */
        void mo6317g0();
    }
}
