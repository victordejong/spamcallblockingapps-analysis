.class public final synthetic Le/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/o0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Le/a/e/o0$b;


# direct methods
.method public synthetic constructor <init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLe/a/e/o0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/f;->a:Le/a/e/o0;

    iput-object p2, p0, Le/a/e/f;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/e/f;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/e/f;->d:Ljava/lang/String;

    iput-object p5, p0, Le/a/e/f;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/e/f;->f:Ljava/lang/String;

    iput-boolean p7, p0, Le/a/e/f;->g:Z

    iput-object p8, p0, Le/a/e/f;->h:Le/a/e/o0$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v1, p0, Le/a/e/f;->a:Le/a/e/o0;

    iget-object v2, p0, Le/a/e/f;->b:Ljava/util/List;

    iget-object v3, p0, Le/a/e/f;->c:Ljava/lang/String;

    iget-object v4, p0, Le/a/e/f;->d:Ljava/lang/String;

    iget-object v5, p0, Le/a/e/f;->e:Ljava/lang/String;

    iget-object v6, p0, Le/a/e/f;->f:Ljava/lang/String;

    iget-boolean v7, p0, Le/a/e/f;->g:Z

    iget-object p1, p0, Le/a/e/f;->h:Le/a/e/o0$b;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le/a/e/p0;

    invoke-direct/range {v0 .. v7}, Le/a/e/p0;-><init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Le/a/e/c/w1;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Le/a/e/c/w1;->a(Z)V

    :cond_0
    return-void
.end method
