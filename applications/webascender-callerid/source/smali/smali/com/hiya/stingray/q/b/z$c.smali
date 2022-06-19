.class final Lcom/hiya/stingray/q/b/z$c;
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
.field public static final f:Lcom/hiya/stingray/q/b/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$c;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$c;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$c;->f:Lcom/hiya/stingray/q/b/z$c;

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
    .locals 7

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object v0

    const-string v1, "RealmPhoneNumberInfo"

    invoke-virtual {v0, v1}, Lio/realm/j0;->c(Ljava/lang/String;)Lio/realm/h0;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Lio/realm/j;

    sget-object v3, Lio/realm/j;->INDEXED:Lio/realm/j;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lio/realm/j;->PRIMARY_KEY:Lio/realm/j;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lio/realm/j;->REQUIRED:Lio/realm/j;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v6, "phoneNumber"

    invoke-virtual {v0, v6, v1, v2}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v2, v5, [Lio/realm/j;

    aput-object v3, v2, v4

    const-string v3, "repliedIsSpam"

    invoke-virtual {v0, v3, v1, v2}, Lio/realm/h0;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;

    .line 4
    invoke-virtual {p1}, Lio/realm/h;->C()Lio/realm/j0;

    move-result-object p1

    const-string v0, "RealmCallLogItemInfo"

    invoke-virtual {p1, v0}, Lio/realm/j0;->d(Ljava/lang/String;)Lio/realm/h0;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "showedIsSpam"

    .line 5
    invoke-virtual {p1, v0}, Lio/realm/h0;->o(Ljava/lang/String;)Lio/realm/h0;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/realm/h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/z$c;->a(Lio/realm/h;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
