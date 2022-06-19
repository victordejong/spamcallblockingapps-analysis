.class public final Le/a/g/a/f0/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/f0/a/i;


# direct methods
.method public constructor <init>(Le/a/g/a/f0/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/f0/a/h;->a:Le/a/g/a/f0/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g/a/f0/a/h;->a:Le/a/g/a/f0/a/i;

    .line 2
    iget-object v0, v0, Le/a/g/a/f0/a/i;->e:Le/a/g/a/f0/a/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/g/a/f0/a/d;->d:Z

    .line 4
    iget-object v2, v0, Le/a/g/a/f0/a/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "analyticsContext"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, v3, Le/a/g/j/w;->a:Le/a/r2/f;

    const-string v4, "positiveButton"

    invoke-static {v3, v2, v4}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v2, v0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "GOOGLE_REVIEW_DONE"

    .line 9
    invoke-static {v2, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-string v2, "FEEDBACK_LIKES_TRUECALLER"

    .line 10
    invoke-static {v2, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, v0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const-string v3, "FEEDBACK_DISMISSED_COUNT"

    .line 13
    invoke-static {v3, v1, v2}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 14
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/f0/a/c;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/g/a/f0/a/c;->a()V

    .line 15
    :cond_1
    iget-object v0, v0, Le/a/g/a/f0/a/d;->c:Le/a/g/a/f0/a/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/g/a/f0/a/b;->a()V

    .line 16
    :cond_2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
