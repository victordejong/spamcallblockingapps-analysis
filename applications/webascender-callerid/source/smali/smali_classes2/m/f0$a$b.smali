.class public final Lm/f0$a$b;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/f0$a;->g(Ln/i;Lm/a0;)Lm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln/i;

.field final synthetic b:Lm/a0;


# direct methods
.method constructor <init>(Ln/i;Lm/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/f0$a$b;->a:Ln/i;

    iput-object p2, p0, Lm/f0$a$b;->b:Lm/a0;

    invoke-direct {p0}, Lm/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lm/f0$a$b;->a:Ln/i;

    invoke-virtual {v0}, Ln/i;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/f0$a$b;->b:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/f0$a$b;->a:Ln/i;

    invoke-interface {p1, v0}, Ln/g;->Y0(Ln/i;)Ln/g;

    return-void
.end method
