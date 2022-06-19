.class final Lcom/hiya/stingray/q/b/z$l;
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
.field public static final f:Lcom/hiya/stingray/q/b/z$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$l;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$l;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$l;->f:Lcom/hiya/stingray/q/b/z$l;

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
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "realm"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object v1

    const-string v2, "RealmPhoneSendEvent"

    invoke-virtual {v1, v2}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "data"

    .line 2
    invoke-virtual {v1, v3}, Lio/realm/h0;->o(Ljava/lang/String;)Lio/realm/h0;

    .line 3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v5, v4, [Lio/realm/j;

    const-string v6, "durationInSeconds"

    invoke-virtual {v1, v6, v3, v5}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object v3

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v3, v6, v5}, Lio/realm/h0;->p(Ljava/lang/String;Z)Lio/realm/h0;

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "isContact"

    invoke-virtual {v1, v7, v3, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v7, v5}, Lio/realm/h0;->p(Ljava/lang/String;Z)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "direction"

    .line 7
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "termination"

    .line 8
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "profileTag"

    .line 9
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "eventType"

    .line 10
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "userDisposition"

    .line 11
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v6, v4, [Lio/realm/j;

    const-string v7, "clientDisposition"

    .line 12
    invoke-virtual {v1, v7, v0, v6}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v0, v4, [Lio/realm/j;

    const-string v4, "isBlackListed"

    .line 13
    invoke-virtual {v1, v4, v3, v0}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v4, v5}, Lio/realm/h0;->p(Ljava/lang/String;Z)Lio/realm/h0;

    .line 15
    :cond_0
    invoke-virtual {p1, v2}, Lio/realm/h;->k0(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$l;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
