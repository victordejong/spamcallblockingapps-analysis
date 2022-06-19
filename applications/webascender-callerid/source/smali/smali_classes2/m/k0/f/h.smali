.class public final Lm/k0/f/h;
.super Lm/h0;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ln/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLn/h;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lm/h0;-><init>()V

    iput-object p1, p0, Lm/k0/f/h;->f:Ljava/lang/String;

    iput-wide p2, p0, Lm/k0/f/h;->g:J

    iput-object p4, p0, Lm/k0/f/h;->h:Ln/h;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/k0/f/h;->g:J

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/k0/f/h;->f:Ljava/lang/String;

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
    iget-object v0, p0, Lm/k0/f/h;->h:Ln/h;

    return-object v0
.end method
