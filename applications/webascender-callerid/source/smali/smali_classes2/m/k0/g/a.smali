.class public final Lm/k0/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:Ln/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ln/h;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/g/a;->b:Ln/h;

    const/high16 p1, 0x40000

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lm/k0/g/a;->a:J

    return-void
.end method


# virtual methods
.method public final a()Lm/x;
    .locals 3

    .line 1
    new-instance v0, Lm/x$a;

    invoke-direct {v0}, Lm/x$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lm/k0/g/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lm/x$a;->e()Lm/x;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lm/x$a;->c(Ljava/lang/String;)Lm/x$a;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lm/k0/g/a;->b:Ln/h;

    iget-wide v1, p0, Lm/k0/g/a;->a:J

    invoke-interface {v0, v1, v2}, Ln/h;->f0(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lm/k0/g/a;->a:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lm/k0/g/a;->a:J

    return-object v0
.end method
