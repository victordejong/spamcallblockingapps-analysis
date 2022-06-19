.class public final Le/a/i/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le/a/i/o;

.field public c:Le/a/i/b0/d/a;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/ads/CustomTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Le/a/i/f;

.field public p:I


# direct methods
.method public constructor <init>(Le/a/i/s;I)V
    .locals 1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p2, Le/a/i/o;->c:Le/a/i/o;

    const-string v0, "CampaignConfig.NONE"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/i/s$a;->b:Le/a/i/o;

    .line 3
    sget-object p2, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 4
    sget-object p2, Le/a/i/b0/d/a;->g:Le/a/i/b0/d/a;

    .line 5
    iput-object p2, p0, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    .line 6
    iput p1, p0, Le/a/i/s$a;->e:I

    .line 7
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iput-object p2, p0, Le/a/i/s$a;->f:Ljava/util/List;

    .line 8
    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    iput-object v0, p0, Le/a/i/s$a;->g:Ljava/util/Map;

    .line 9
    iput-object p2, p0, Le/a/i/s$a;->h:Ljava/util/List;

    .line 10
    iput-boolean p1, p0, Le/a/i/s$a;->n:Z

    .line 11
    iput p1, p0, Le/a/i/s$a;->p:I

    return-void
.end method


# virtual methods
.method public a(Le/a/i/b0/d/a;)Le/a/i/s$a;
    .locals 1

    const-string v0, "adCampaignConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Le/a/i/s$a;
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/s$a;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/i/s$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Le/a/i/s$b;
    .locals 1

    const-string v0, "adUnit"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Le/a/i/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    return-object p0
.end method

.method public d(Le/a/i/o;)Le/a/i/s$a;
    .locals 1

    const-string v0, "campaign"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/s$a;->b:Le/a/i/o;

    return-object p0
.end method

.method public final varargs e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;
    .locals 1

    const-string v0, "supportedBanners"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/i/s$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public final varargs f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;
    .locals 1

    const-string v0, "supportedCustomTemplates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/i/s$a;->h:Ljava/util/List;

    return-object p0
.end method
