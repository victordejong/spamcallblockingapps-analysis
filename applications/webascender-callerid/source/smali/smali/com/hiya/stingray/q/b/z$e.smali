.class final Lcom/hiya/stingray/q/b/z$e;
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


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/z;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/z$e;->f:Lcom/hiya/stingray/q/b/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/h;)V
    .locals 6

    const-class v0, Ljava/lang/String;

    const-string v1, "realm"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/q/b/z$e;->f:Lcom/hiya/stingray/q/b/z;

    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object v2

    const-string v3, "realm.schema"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hiya/stingray/q/b/z;->b(Lcom/hiya/stingray/q/b/z;Lio/realm/j0;)Z

    move-result v1

    const-string v2, "RealmCallerIdDTO"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v4, v3, [Lio/realm/j;

    const-string v5, "lineType"

    .line 3
    invoke-virtual {v1, v5, v0, v4}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v4, v3, [Lio/realm/j;

    const-string v5, "lineTypeId"

    .line 4
    invoke-virtual {v1, v5, v0, v4}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v4, v3, [Lio/realm/j;

    const-string v5, "lineTypeTooltip"

    .line 5
    invoke-virtual {v1, v5, v0, v4}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object p1

    if-eqz p1, :cond_1

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "displayCategory"

    .line 7
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "displayMessage"

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "reputationTypeString"

    .line 9
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "profileTag"

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$e;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
