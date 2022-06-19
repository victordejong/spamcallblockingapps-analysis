.class public final Lm/d$a$a;
.super Ln/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/d$a;-><init>(Lm/k0/d/d$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lm/d$a;

.field final synthetic g:Ln/d0;


# direct methods
.method constructor <init>(Lm/d$a;Ln/d0;Ln/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/d0;",
            "Ln/d0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/d$a$a;->f:Lm/d$a;

    iput-object p2, p0, Lm/d$a$a;->g:Ln/d0;

    invoke-direct {p0, p3}, Ln/l;-><init>(Ln/d0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/d$a$a;->f:Lm/d$a;

    invoke-virtual {v0}, Lm/d$a;->a()Lm/k0/d/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lm/k0/d/d$c;->close()V

    .line 2
    invoke-super {p0}, Ln/l;->close()V

    return-void
.end method
