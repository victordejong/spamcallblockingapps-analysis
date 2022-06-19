.class public Le/p/a/y/k/e$a;
.super Lv3/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Le/p/a/y/k/e;


# direct methods
.method public constructor <init>(Le/p/a/y/k/e;Lv3/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/e$a;->b:Le/p/a/y/k/e;

    .line 2
    invoke-direct {p0, p2}, Lv3/l;-><init>(Lv3/b0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/e$a;->b:Le/p/a/y/k/e;

    .line 2
    iget-object v1, v0, Le/p/a/y/k/e;->a:Le/p/a/y/k/q;

    .line 3
    invoke-virtual {v1, v0}, Le/p/a/y/k/q;->h(Le/p/a/y/k/i;)V

    .line 4
    iget-object v0, p0, Lv3/l;->a:Lv3/b0;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method
