.class public final Lcom/hiya/stingray/ui/setting/DebugActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# static fields
.field private static final M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final N:I = 0x237

# The value of this static final field might be set in the static constructor
.field private static final O:I = 0x238

.field private static final P:[Ljava/lang/String;


# instance fields
.field public A:Lcom/hiya/stingray/manager/e1;

.field public B:Lcom/hiya/stingray/manager/k4;

.field public C:Lcom/hiya/stingray/manager/m3;

.field public D:Lcom/hiya/stingray/manager/g2;

.field public E:Lcom/hiya/stingray/q/b/l;

.field public F:Lcom/hiya/stingray/manager/z2;

.field public G:Lcom/hiya/stingray/q/b/y;

.field public H:Lcom/hiya/stingray/manager/w2;

.field public I:Lcom/hiya/stingray/q/d/a;

.field public J:Lcom/hiya/stingray/manager/d3;

.field private final K:Lcom/google/gson/f;

.field private L:Ljava/util/HashMap;

.field public r:Lcom/hiya/stingray/manager/s2;

.field public s:Lcom/hiya/stingray/manager/u3;

.field public t:Lcom/hiya/stingray/manager/x3;

.field public u:Lcom/hiya/stingray/manager/v3;

.field public v:Lcom/hiya/stingray/manager/a4;

.field public w:Lcom/hiya/stingray/manager/o2;

.field public x:Lcom/hiya/stingray/ui/login/o;

.field public y:Lcom/hiya/stingray/manager/u2;

.field public z:Lcom/hiya/stingray/manager/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->M:Ljava/util/Map;

    const/16 v0, 0x237

    .line 2
    sput v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->N:I

    const/16 v0, 0x238

    .line 3
    sput v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->O:I

    const-string v1, "+12065550181"

    const-string v2, "+12065550186"

    const-string v3, "+12673100737"

    const-string v4, "+16193041249"

    const-string v5, "+13239266678"

    const-string v6, "+12065550175"

    const-string v7, "+12065550176"

    const-string v8, "+12065550110"

    const-string v9, "+12065550111"

    const-string v10, "+12065550120"

    const-string v11, "+19991110006"

    .line 4
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->P:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->i()Lcom/google/gson/g;

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->K:Lcom/google/gson/f;

    return-void
.end method

.method private final A0()V
    .locals 6

    .line 1
    sget v0, Lcom/hiya/stingray/o;->e1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "feedback"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Flagged calls counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->y:Lcom/hiya/stingray/manager/u2;

    const/4 v3, 0x0

    const-string v4, "feedbackManager"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u2;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n            Blocked calls counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->y:Lcom/hiya/stingray/manager/u2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u2;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n            Identified calls counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->y:Lcom/hiya/stingray/manager/u2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u2;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n            RemoteConfig\'s feedback_survey_link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    const-string v4, "remoteConfigManager"

    if-eqz v2, :cond_1

    const-string v5, "feedback_survey_link"

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            RemoteConfig\'s select_survey_partners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    if-eqz v2, :cond_0

    const-string v3, "select_survey_partners"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->M4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$r;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$r;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->P4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$s;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$s;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 11
    :cond_0
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_2
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_3
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private final B0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FirebaseInstanceId.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$t;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$t;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    .line 2
    sget v0, Lcom/hiya/stingray/o;->g1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$u;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$u;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->h1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$v;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$v;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->C0()V

    return-void
.end method

.method private final C0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    const/4 v2, 0x0

    const-string v3, "remoteConfigManager"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/x3;->d()Ljava/util/Map;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lkotlin/s/k;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, ""

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x3d

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/hiya/stingray/o;->j1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "firebaseRemoteConfigValues"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v1, Lcom/hiya/stingray/o;->i1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "firebaseRemoteConfigOverrides"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "No overrides, add using field above"

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overrides:\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v2

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const-string v9, "\n"

    invoke-static/range {v8 .. v16}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final D0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->H:Lcom/hiya/stingray/manager/w2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/w2;->e()Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->d()Li/c/b0/b/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->e(Li/c/b0/b/j0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$w;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$w;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/setting/DebugActivity$x;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$x;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 7
    sget v0, Lcom/hiya/stingray/o;->X1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$y;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$y;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->Y1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$z;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$z;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "localOverrideManager"

    .line 9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final E0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->y2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$a0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$a0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final F0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->C2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$b0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$b0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final G0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->C:Lcom/hiya/stingray/manager/m3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/m3;->e()Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$c0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$c0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$d0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$d0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$e0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$e0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 7
    new-instance v2, Lcom/hiya/stingray/ui/setting/DebugActivity$f0;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$f0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 10
    sget v0, Lcom/hiya/stingray/o;->R3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$g0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "phoneEventManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final H0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->G:Lcom/hiya/stingray/q/b/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/y;->c()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$h0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$h0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/setting/DebugActivity$i0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$i0;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 7
    sget v0, Lcom/hiya/stingray/o;->N2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$j0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "phoneNumberInfoProvider"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final I0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    const/4 v1, 0x0

    const-string v2, "premiumManager"

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->H()Ljava/util/List;

    move-result-object v0

    const-string v3, "\n"

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/manager/u3$l;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": active("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3$l;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n|date("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3, v3}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3$l;->d()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->B()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3;->B()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " min ago"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "unknown when"

    .line 6
    :goto_1
    sget v4, Lcom/hiya/stingray/o;->S2:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "premium"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n            |Premium: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n            |Premium available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n            |Subscribed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n            |Subscription has been expired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hiya/stingray/t/d1;->a()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n            |Active subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v6, "null"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n            \n            |Purchases by SKU (updated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 14
    invoke-static {v0, v1, v3, v1}, Lkotlin/c0/m;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget v0, Lcom/hiya/stingray/o;->T2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    const-string v4, "premiumDebugOverride"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3;->D()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$k0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$k0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    sget v0, Lcom/hiya/stingray/o;->Q4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$l0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$l0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget v0, Lcom/hiya/stingray/o;->N4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$m0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$m0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget v0, Lcom/hiya/stingray/o;->R4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$n0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$n0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 20
    :cond_7
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_8
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_9
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_a
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_c
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_d
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_e
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final J0()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->Z2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "promoPremium"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Promo Premium: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->u:Lcom/hiya/stingray/manager/v3;

    const/4 v3, 0x0

    const-string v4, "promoPremiumManager"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/v3;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Has been expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->u:Lcom/hiya/stingray/manager/v3;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/v3;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n            Duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->u:Lcom/hiya/stingray/manager/v3;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " min\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->b3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const-string v2, "promoPremiumDebugOverride"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->u:Lcom/hiya/stingray/manager/v3;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/v3;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$o0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->c3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$p0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$p0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->d3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v0, Lcom/hiya/stingray/o;->a3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$r0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$r0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 12
    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_2
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_3
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private final K0()V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/stingray/o;->N3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "select"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Select: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->v:Lcom/hiya/stingray/manager/a4;

    const-string v3, "selectManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Partner name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->v:Lcom/hiya/stingray/manager/a4;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Partner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->v:Lcom/hiya/stingray/manager/a4;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->v:Lcom/hiya/stingray/manager/a4;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/a4;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->O3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const-string v2, "selectDebugOverride"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->E()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$s0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$s0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->P3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$t0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$t0;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "premiumManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 13
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 14
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 15
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4
.end method

.method private final L0()V
    .locals 8

    .line 1
    const-class v0, Landroid/os/PowerManager;

    invoke-static {p0, v0}, Landroidx/core/content/a;->j(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const-string v3, "Unknown"

    const/16 v4, 0x17

    if-ge v1, v4, :cond_0

    const-string v0, "Not supported by current OS version"

    goto :goto_0

    :cond_0
    if-lt v1, v4, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v2, :cond_1

    const-string v0, "App is not being optimized"

    goto :goto_0

    :cond_1
    if-lt v1, v4, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "App is being optimized"

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    const-string v5, "telecom"

    .line 5
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    if-lt v1, v4, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-lt v1, v4, :cond_4

    .line 6
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-lt v1, v4, :cond_5

    .line 7
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    :goto_1
    const-string v2, "Not supported"

    :goto_2
    if-lt v1, v4, :cond_7

    .line 8
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    if-ge v1, v4, :cond_8

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_8
    :goto_3
    sget v1, Lcom/hiya/stingray/o;->L4:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "user"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n            Phone number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v5, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->w:Lcom/hiya/stingray/manager/o2;

    const-string v6, "userInfoManager"

    const/4 v7, 0x0

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n            Phone number verified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v5, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->w:Lcom/hiya/stingray/manager/o2;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n            Default dialer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Overlay permission: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Contacts permission: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->x:Lcom/hiya/stingray/ui/login/o;

    const-string v3, "permissionHandler"

    if-eqz v2, :cond_10

    const-string v5, "android.permission.READ_CONTACTS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Location permission: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->x:Lcom/hiya/stingray/ui/login/o;

    if-eqz v2, :cond_f

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            SMS permission: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->x:Lcom/hiya/stingray/ui/login/o;

    if-eqz v2, :cond_e

    sget-object v3, Lcom/hiya/stingray/util/n;->c:[Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Battery optimization: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            Auto block spam: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->w:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            Auto block fraud: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->w:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            Auto block private: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->w:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            Caller ID Style: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->I:Lcom/hiya/stingray/q/d/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Full screen"

    goto :goto_4

    :cond_9
    const-string v0, "Overlay"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_a
    const-string v0, "commonSharedPreferences"

    .line 25
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 26
    :cond_b
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 27
    :cond_c
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 28
    :cond_d
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 29
    :cond_e
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 30
    :cond_f
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 31
    :cond_10
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 32
    :cond_11
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 33
    :cond_12
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7
.end method

.method public static final synthetic P(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->c0()V

    return-void
.end method

.method public static final synthetic Q()I
    .locals 1

    .line 1
    sget v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->O:I

    return v0
.end method

.method public static final synthetic R()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->M:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic S(Lcom/hiya/stingray/ui/setting/DebugActivity;)Lcom/google/gson/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->K:Lcom/google/gson/f;

    return-object p0
.end method

.method public static final synthetic T()I
    .locals 1

    .line 1
    sget v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->N:I

    return v0
.end method

.method public static final synthetic U(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->p0()V

    return-void
.end method

.method public static final synthetic V(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->s0()V

    return-void
.end method

.method public static final synthetic W(Lcom/hiya/stingray/ui/setting/DebugActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->y0(Z)V

    return-void
.end method

.method public static final synthetic X(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->C0()V

    return-void
.end method

.method public static final synthetic Y(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->D0()V

    return-void
.end method

.method public static final synthetic Z(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->G0()V

    return-void
.end method

.method public static final synthetic a0(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->H0()V

    return-void
.end method

.method private final b0(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Yes"

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "No"

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    :goto_0
    return-object p1
.end method

.method private final c0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hiya/stingray/ui/setting/DebugActivity;->P:[Ljava/lang/String;

    sget-object v10, Lcom/hiya/stingray/ui/setting/DebugActivity$b;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$b;

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/s/e;->u([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Successfully delete test call logs"

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final p0()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/y/d;->a(J)Lkotlin/y/c;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_5

    .line 2
    sget-object v4, Lcom/hiya/stingray/ui/setting/DebugActivity;->P:[Ljava/lang/String;

    .line 3
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    add-int/lit8 v9, v7, 0x1

    .line 4
    invoke-virtual {v1}, Lkotlin/y/c;->c()Z

    move-result v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "number"

    .line 6
    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object v8, v4

    move/from16 v16, v5

    int-to-long v4, v3

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v8

    move/from16 v17, v9

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    mul-long v4, v4, v8

    sub-long/2addr v14, v4

    int-to-long v4, v7

    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x12c

    move-object v9, v11

    move-object/from16 v19, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v11, v12, v7, v8}, Lkotlin/y/c;->h(JJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    mul-long v4, v4, v7

    sub-long/2addr v14, v4

    .line 10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v11, v12, v4, v5}, Lkotlin/y/c;->h(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "date"

    .line 11
    invoke-virtual {v13, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x14

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v4, v2}, Lkotlin/y/c;->f(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "duration"

    invoke-virtual {v13, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v7, 0x3

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    sget-object v4, Lkotlin/y/c;->b:Lkotlin/y/c$a;

    invoke-static {v5, v4}, Lkotlin/s/e;->v([Ljava/lang/Object;Lkotlin/y/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v13, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "new"

    invoke-virtual {v13, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "name"

    const-string v4, ""

    .line 15
    invoke-virtual {v13, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "numbertype"

    invoke-virtual {v13, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "numberlabel"

    .line 17
    invoke-virtual {v13, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 18
    invoke-virtual {v9, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 19
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    if-eqz v10, :cond_2

    .line 20
    iget-object v2, v0, Lcom/hiya/stingray/ui/setting/DebugActivity;->E:Lcom/hiya/stingray/q/b/l;

    if-eqz v2, :cond_1

    long-to-int v4, v7

    invoke-virtual {v2, v4}, Lcom/hiya/stingray/q/b/l;->e(I)Li/c/b0/b/e;

    move-result-object v2

    .line 21
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object v2

    .line 22
    sget-object v4, Lcom/hiya/stingray/ui/setting/DebugActivity$c;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$c;

    sget-object v5, Lcom/hiya/stingray/ui/setting/DebugActivity$d;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$d;

    invoke-virtual {v2, v4, v5}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_3

    :cond_1
    const-string v1, "callLogItemInfoProvider"

    .line 24
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    move/from16 v7, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 25
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v1, "Successfully wrote mocked call logs"

    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final q0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FirebaseInstanceId.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/setting/DebugActivity$f;->a:Lcom/hiya/stingray/ui/setting/DebugActivity$f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private final r0()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->f0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "container"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "group"

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->f(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    sget-object v2, Lcom/hiya/stingray/ui/setting/DebugActivity;->M:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/hiya/stingray/ui/setting/DebugActivity$a;

    invoke-direct {v3, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private final s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->z:Lcom/hiya/stingray/manager/g1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g1;->j()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->x0()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->u0()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->L0()V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->B0()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->t0()V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->I0()V

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->J0()V

    .line 9
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->K0()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-static {p0, v0, v2, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->z0(Lcom/hiya/stingray/ui/setting/DebugActivity;ZILjava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->A0()V

    .line 12
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->w0()V

    .line 13
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->G0()V

    .line 14
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->v0()V

    .line 15
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->E0()V

    .line 16
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->H0()V

    .line 17
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->D0()V

    .line 18
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->F0()V

    .line 19
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->r0()V

    return-void

    :cond_0
    const-string v0, "analyticsUserFlagsManager"

    .line 20
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final t0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->B:Lcom/hiya/stingray/manager/k4;

    const-string v1, "userPropertiesManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/k4;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, "\n"

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->B:Lcom/hiya/stingray/manager/k4;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/k4;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    sget v0, Lcom/hiya/stingray/o;->d:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "analytics"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n            |Flags: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v4, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->z:Lcom/hiya/stingray/manager/g1;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/g1;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n            \n            |User properties: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n            |Last events:\n        "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 8
    invoke-static {v1, v2, v3, v2}, Lkotlin/c0/m;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->e:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "analyticsEvents"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/hiya/stingray/manager/e1;->e:Ljava/util/List;

    const-string v3, "AnalyticsManager.EVENTS_LOG"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/s/k;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "\n\n"

    invoke-static/range {v4 .. v12}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->f:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const-string v3, "analyticsSendsToCrashlytics"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->I:Lcom/hiya/stingray/q/d/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/hiya/stingray/q/d/a;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$g;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2
    const-string v0, "commonSharedPreferences"

    .line 12
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "analyticsUserFlagsManager"

    .line 13
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final u0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->k:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "app"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n                Version name: 11.0.1-8647\n                Version code: 110001\n                Package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                Debug build: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->b0(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final v0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->M:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$h;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->L:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$i;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final w0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->k0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$j;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$j;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->m0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$k;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$k;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->n0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$l;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$l;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->o0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$m;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$m;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->l0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/setting/DebugActivity$n;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$n;-><init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final x0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "device"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n                Android release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                Android SDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                Manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                Brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final y0(Z)V
    .locals 14

    .line 1
    sget v0, Lcom/hiya/stingray/o;->W0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "experiment"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Remote Config active experiments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->r:Lcom/hiya/stingray/manager/s2;

    const/4 v3, 0x0

    const-string v4, "experimentManager"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/s2;->j()Ljava/util/Set;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/hiya/stingray/ui/setting/DebugActivity$p;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$p;

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const-string v6, ", "

    invoke-static/range {v5 .. v13}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Active experiments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->r:Lcom/hiya/stingray/manager/s2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/s2;->c()Ljava/util/Set;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/hiya/stingray/ui/setting/DebugActivity$q;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$q;

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const-string v6, ", "

    invoke-static/range {v5 .. v13}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            Value of \"experiments\" user property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->r:Lcom/hiya/stingray/manager/s2;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/s2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lkotlin/c0/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    sget p1, Lcom/hiya/stingray/o;->X0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    invoke-static {}, Lcom/hiya/stingray/manager/s2$c;->values()[Lcom/hiya/stingray/manager/s2$c;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_2

    aget-object v7, p1, v5

    .line 11
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/s2$c;->getDone()Z

    move-result v8

    xor-int/2addr v6, v8

    if-eqz v6, :cond_1

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/s2$c;

    .line 13
    sget v1, Lcom/hiya/stingray/o;->X0:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s2$c;->getRemoteConfigName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    invoke-direct {v8, v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 18
    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v7, Landroid/widget/EditText;

    new-instance v8, Lf/a/o/d;

    const v9, 0x7f1200fa

    invoke-direct {v8, p0, v9}, Lf/a/o/d;-><init>(Landroid/content/Context;I)V

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v8, "0"

    .line 20
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 22
    iget-object v8, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->r:Lcom/hiya/stingray/manager/s2;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v0}, Lcom/hiya/stingray/manager/s2;->e(Lcom/hiya/stingray/manager/s2$c;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v8, Lcom/hiya/stingray/ui/setting/DebugActivity$o;

    invoke-direct {v8, v7, v0, p0}, Lcom/hiya/stingray/ui/setting/DebugActivity$o;-><init>(Landroid/widget/EditText;Lcom/hiya/stingray/manager/s2$c;Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x28

    invoke-static {v8}, Lcom/hiya/stingray/util/f0;->c(I)I

    move-result v8

    invoke-direct {v0, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    :cond_5
    return-void

    .line 28
    :cond_6
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_7
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_8
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic z0(Lcom/hiya/stingray/ui/setting/DebugActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->y0(Z)V

    return-void
.end method


# virtual methods
.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->L:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->L:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->L:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->L:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final d0()Lcom/hiya/stingray/q/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->I:Lcom/hiya/stingray/q/d/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "commonSharedPreferences"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e0()Lcom/hiya/stingray/manager/g2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->D:Lcom/hiya/stingray/manager/g2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dataCollectionManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f0()Lcom/hiya/stingray/manager/s2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->r:Lcom/hiya/stingray/manager/s2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "experimentManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g0()Lcom/hiya/stingray/manager/w2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->H:Lcom/hiya/stingray/manager/w2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localOverrideManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h0()Lcom/hiya/stingray/manager/z2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->F:Lcom/hiya/stingray/manager/z2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "newsletterManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i0()Lcom/hiya/stingray/manager/d3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->J:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "onBoardingManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j0()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->x:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k0()Lcom/hiya/stingray/manager/m3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->C:Lcom/hiya/stingray/manager/m3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "phoneEventManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final l0()Lcom/hiya/stingray/q/b/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->G:Lcom/hiya/stingray/q/b/y;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "phoneNumberInfoProvider"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m0()Lcom/hiya/stingray/manager/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->s:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n0()Lcom/hiya/stingray/manager/v3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->u:Lcom/hiya/stingray/manager/v3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "promoPremiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o0()Lcom/hiya/stingray/manager/x3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/DebugActivity;->t:Lcom/hiya/stingray/manager/x3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {v0}, Lcom/hiya/stingray/HiyaApplication;->m()V

    .line 2
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->d0(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 4
    invoke-static {p0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0079

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->j0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/hiya/stingray/ui/setting/DebugActivity$e;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$e;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->s0()V

    .line 9
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->q0()V

    return-void

    .line 10
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.HiyaApplication"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    .line 2
    aget p2, p3, p2

    if-nez p2, :cond_1

    .line 3
    sget p2, Lcom/hiya/stingray/ui/setting/DebugActivity;->N:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->p0()V

    goto :goto_0

    .line 4
    :cond_0
    sget p2, Lcom/hiya/stingray/ui/setting/DebugActivity;->O:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/DebugActivity;->c0()V

    :cond_1
    :goto_0
    return-void
.end method
