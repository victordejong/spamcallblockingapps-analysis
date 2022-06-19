.class final Lcom/hiya/stingray/q/b/z$j;
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
.field public static final f:Lcom/hiya/stingray/q/b/z$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$j;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$j;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$j;->f:Lcom/hiya/stingray/q/b/z$j;

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
    .locals 3

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object p1

    const-string v0, "RealmCallerIdDTO"

    invoke-virtual {p1, v0}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "lastUpdatedTimeStamp"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/h0;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/j;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    .line 5
    sget-object v0, Lcom/hiya/stingray/q/b/z$j$a;->a:Lcom/hiya/stingray/q/b/z$j$a;

    invoke-virtual {p1, v0}, Lio/realm/h0;->q(Lio/realm/h0$c;)Lio/realm/h0;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$j;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
