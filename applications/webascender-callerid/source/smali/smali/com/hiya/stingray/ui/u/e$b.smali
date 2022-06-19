.class final Lcom/hiya/stingray/ui/u/e$b;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/e;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/manager/i2$b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/u/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/u/e$b;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/u/e$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/u/e$b;->f:Lcom/hiya/stingray/ui/u/e$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/i2$b;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i2$b;->b()Lcom/hiya/stingray/manager/i2$a;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/i2$a;->LOOKUP:Lcom/hiya/stingray/manager/i2$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/i2$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/u/e$b;->a(Lcom/hiya/stingray/manager/i2$b;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
