.class final Lcom/hiya/stingray/q/b/z$k;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/z;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lio/realm/h;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/q/b/z$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$k;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$k;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$k;->f:Lcom/hiya/stingray/q/b/z$k;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/h;)V
    .locals 6

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object v0

    const-string v1, "RealmCallLogItemInfo"

    invoke-virtual {v0, v1}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Lio/realm/j;

    const/4 v4, 0x0

    sget-object v5, Lio/realm/j;->REQUIRED:Lio/realm/j;

    aput-object v5, v3, v4

    const-string v4, "showedIsSpam"

    invoke-virtual {v0, v4, v2, v3}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/hiya/stingray/q/b/z$k$a;->a:Lcom/hiya/stingray/q/b/z$k$a;

    invoke-virtual {p1, v0}, Lio/realm/h0;->q(Lio/realm/h0$c;)Lio/realm/h0;

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$k;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
