.class final Lm/d$a;
.super Lm/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final f:Ln/h;

.field private final g:Lm/k0/d/d$c;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lm/k0/d/d$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lm/h0;-><init>()V

    iput-object p1, p0, Lm/d$a;->g:Lm/k0/d/d$c;

    iput-object p2, p0, Lm/d$a;->h:Ljava/lang/String;

    iput-object p3, p0, Lm/d$a;->i:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lm/k0/d/d$c;->b(I)Ln/d0;

    move-result-object p1

    .line 3
    new-instance p2, Lm/d$a$a;

    invoke-direct {p2, p0, p1, p1}, Lm/d$a$a;-><init>(Lm/d$a;Ln/d0;Ln/d0;)V

    .line 4
    invoke-static {p2}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object p1

    iput-object p1, p0, Lm/d$a;->f:Ln/h;

    return-void
.end method


# virtual methods
.method public final a()Lm/k0/d/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/d$a;->g:Lm/k0/d/d$c;

    return-object v0
.end method

.method public contentLength()J
    .locals 3

    .line 1
    iget-object v0, p0, Lm/d$a;->i:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Lm/k0/b;->R(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public contentType()Lm/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/d$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lm/a0;->g:Lm/a0$a;

    invoke-virtual {v1, v0}, Lm/a0$a;->b(Ljava/lang/String;)Lm/a0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Ln/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/d$a;->f:Ln/h;

    return-object v0
.end method
