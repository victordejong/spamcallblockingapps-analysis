.class public Ln3/y/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/d$g;,
        Ln3/y/e/d$h;,
        Ln3/y/e/d$f;,
        Ln3/y/e/d$e;,
        Ln3/y/e/d$d;,
        Ln3/y/e/d$c;,
        Ln3/y/e/d$b;,
        Ln3/y/e/d$i;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:Ln3/y/e/d$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 2
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "\u266b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Ln3/y/e/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/y/e/d$i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ln3/y/e/d$a;

    invoke-direct {v0, p0}, Ln3/y/e/d$a;-><init>(Ln3/y/e/d;)V

    iput-object v0, p0, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/e/d;->b:Ln3/y/e/d$i;

    new-instance v1, Ln3/y/e/d$c;

    const/4 v2, 0x1

    iget-object v3, p0, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln3/y/e/d$c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ln3/y/e/d$i;->a(Ln3/y/e/d$c;)V

    .line 3
    iget-object v0, p0, Ln3/y/e/d;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method
