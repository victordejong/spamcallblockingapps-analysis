.class public final Le/a/f0/h/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/f0/h/c/a$b;

.field public final synthetic b:Le/a/f0/h/a/a;


# direct methods
.method public constructor <init>(Le/a/f0/h/c/a$b;Le/a/f0/h/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/f0/h/c/b;->a:Le/a/f0/h/c/a$b;

    iput-object p2, p0, Le/a/f0/h/c/b;->b:Le/a/f0/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f0/h/c/b;->a:Le/a/f0/h/c/a$b;

    .line 2
    iget-object p1, p1, Le/a/f0/h/c/a$b;->b:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/f0/h/c/b;->b:Le/a/f0/h/a/a;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
