.class final Lcom/hiya/stingray/q/b/z$d;
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
.field public static final f:Lcom/hiya/stingray/q/b/z$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$d;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$d;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$d;->f:Lcom/hiya/stingray/q/b/z$d;

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
    .locals 5

    const-class v0, Ljava/lang/String;

    const-string v1, "realm"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object p1

    const-string v1, "RealmCallScreenerDTO"

    invoke-virtual {p1, v1}, Lio/realm/j0;->c(Ljava/lang/String;)Lio/realm/h0;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/j;

    .line 2
    sget-object v2, Lio/realm/j;->PRIMARY_KEY:Lio/realm/j;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "phone"

    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object p1

    .line 3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v2, v3, [Lio/realm/j;

    const-string v4, "lastUpdatedTimeStamp"

    invoke-virtual {p1, v4, v1, v2}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object p1

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "firstResponseSms"

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object p1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v1, v3, [Lio/realm/j;

    const-string v2, "isAllowedThroughCallScreener"

    invoke-virtual {p1, v2, v0, v1}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$d;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
