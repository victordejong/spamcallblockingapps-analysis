.class public final Lu3/d$a$a;
.super Lv3/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/d$a;-><init>(Lu3/p0/e/e$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu3/d$a;

.field public final synthetic c:Lv3/b0;


# direct methods
.method public constructor <init>(Lu3/d$a;Lv3/b0;Lv3/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "Lv3/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/d$a$a;->b:Lu3/d$a;

    iput-object p2, p0, Lu3/d$a$a;->c:Lv3/b0;

    invoke-direct {p0, p3}, Lv3/l;-><init>(Lv3/b0;)V

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
    iget-object v0, p0, Lu3/d$a$a;->b:Lu3/d$a;

    .line 2
    iget-object v0, v0, Lu3/d$a;->d:Lu3/p0/e/e$c;

    .line 3
    invoke-virtual {v0}, Lu3/p0/e/e$c;->close()V

    .line 4
    iget-object v0, p0, Lv3/l;->a:Lv3/b0;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method
