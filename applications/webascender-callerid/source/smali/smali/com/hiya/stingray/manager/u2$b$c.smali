.class final Lcom/hiya/stingray/manager/u2$b$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/q<",
        "Lcom/hiya/stingray/q/d/a;",
        "Lcom/hiya/stingray/manager/x3;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/u2$b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/u2$b$c;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u2$b$c;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/u2$b$c;->f:Lcom/hiya/stingray/manager/u2$b$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Ljava/lang/Integer;)Z
    .locals 6

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotes"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/u2;->a()[Ljava/lang/Integer;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/a;->G()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/q/d/a;->u0(I)V

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/a;->G()I

    move-result v2

    int-to-long v4, v2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v2, "feedback_dialog_params"

    .line 4
    invoke-virtual {p2, v2, p3}, Lcom/hiya/stingray/manager/x3;->n(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    cmp-long p3, v4, v0

    if-ltz p3, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/q/d/a;->u0(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/d/a;

    check-cast p2, Lcom/hiya/stingray/manager/x3;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/u2$b$c;->a(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
