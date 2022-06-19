.class public Ln3/b0/a/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b0/a/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b0/a/h$d;

.field public final synthetic b:Ln3/b0/a/d$a;


# direct methods
.method public constructor <init>(Ln3/b0/a/d$a;Ln3/b0/a/h$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/d$a$b;->b:Ln3/b0/a/d$a;

    iput-object p2, p0, Ln3/b0/a/d$a$b;->a:Ln3/b0/a/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b0/a/d$a$b;->b:Ln3/b0/a/d$a;

    iget-object v1, v0, Ln3/b0/a/d$a;->e:Ln3/b0/a/d;

    iget v2, v1, Ln3/b0/a/d;->g:I

    iget v3, v0, Ln3/b0/a/d$a;->c:I

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v2, v0, Ln3/b0/a/d$a;->b:Ljava/util/List;

    iget-object v3, p0, Ln3/b0/a/d$a$b;->a:Ln3/b0/a/h$d;

    iget-object v0, v0, Ln3/b0/a/d$a;->d:Ljava/lang/Runnable;

    .line 3
    iget-object v4, v1, Ln3/b0/a/d;->f:Ljava/util/List;

    .line 4
    iput-object v2, v1, Ln3/b0/a/d;->e:Ljava/util/List;

    .line 5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln3/b0/a/d;->f:Ljava/util/List;

    .line 6
    iget-object v2, v1, Ln3/b0/a/d;->a:Ln3/b0/a/q;

    invoke-virtual {v3, v2}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    .line 7
    invoke-virtual {v1, v4, v0}, Ln3/b0/a/d;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
