.class public final Le/a/t1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final a:Le/a/t1;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t1$n;->a:Le/a/t1;

    return-void
.end method


# virtual methods
.method public a(Le/a/q3/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$n;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->b2()Le/a/q3/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Le/a/q3/b;->g:Le/a/q3/h;

    return-void
.end method

.method public b(Lcom/truecaller/dialpad_view/Dialpad;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$n;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->b2()Le/a/q3/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    .line 6
    iget-object v0, p0, Le/a/t1$n;->a:Le/a/t1;

    .line 7
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 8
    invoke-interface {v0}, Le/a/j2;->M6()Le/a/b4/a/d;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object v0, p1, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    return-void
.end method
