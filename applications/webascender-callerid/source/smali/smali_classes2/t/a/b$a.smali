.class Lt/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/a/b;->b(Lt/a/a;Lt/a/j;Lt/a/f;Lt/a/e;Ljava/util/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt/a/j;

.field final synthetic b:Lt/a/f;

.field final synthetic c:Lt/a/e;

.field final synthetic d:Ljava/util/Iterator;

.field final synthetic e:Lt/a/b;


# direct methods
.method constructor <init>(Lt/a/b;Lt/a/j;Lt/a/f;Lt/a/e;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/a/b$a;->e:Lt/a/b;

    iput-object p2, p0, Lt/a/b$a;->a:Lt/a/j;

    iput-object p3, p0, Lt/a/b$a;->b:Lt/a/f;

    iput-object p4, p0, Lt/a/b$a;->c:Lt/a/e;

    iput-object p5, p0, Lt/a/b$a;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt/a/b$a;->e:Lt/a/b;

    iget-object v2, p0, Lt/a/b$a;->a:Lt/a/j;

    iget-object v3, p0, Lt/a/b$a;->b:Lt/a/f;

    iget-object v4, p0, Lt/a/b$a;->c:Lt/a/e;

    iget-object v5, p0, Lt/a/b$a;->d:Ljava/util/Iterator;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lt/a/b;->a(Lt/a/b;Lt/a/a;Lt/a/j;Lt/a/f;Lt/a/e;Ljava/util/Iterator;)V

    return-void
.end method
