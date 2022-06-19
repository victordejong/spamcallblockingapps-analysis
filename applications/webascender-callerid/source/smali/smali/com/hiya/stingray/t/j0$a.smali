.class public final Lcom/hiya/stingray/t/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/hiya/stingray/t/y0;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/hiya/stingray/t/j0$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/j0$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/j0$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/j0$a;->e(Z)Lcom/hiya/stingray/t/j0$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/j0;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hiya/stingray/t/j0$a;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/hiya/stingray/t/j0$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/hiya/stingray/t/j0$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/t/j0$a;->e:Lcom/hiya/stingray/t/y0;

    iget-boolean v5, p0, Lcom/hiya/stingray/t/j0$a;->f:Z

    iget-object v6, p0, Lcom/hiya/stingray/t/j0$a;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/hiya/stingray/t/j0;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)Lcom/hiya/stingray/t/j0;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;)Lcom/hiya/stingray/t/j0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;)",
            "Lcom/hiya/stingray/t/j0$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/hiya/stingray/t/j0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/t/j0$a;->f:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/util/Map;)Lcom/hiya/stingray/t/j0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;)",
            "Lcom/hiya/stingray/t/j0$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->b:Ljava/util/Map;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/j0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/j0$a;->e:Lcom/hiya/stingray/t/y0;

    return-object p0
.end method
