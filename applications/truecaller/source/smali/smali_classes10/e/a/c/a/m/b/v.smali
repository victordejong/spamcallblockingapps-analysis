.class public final Le/a/c/a/m/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/b/l;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/v;->a:Le/a/c/a/m/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/m/b/v;->a:Le/a/c/a/m/b/l;

    .line 2
    iget-boolean v0, p1, Le/a/c/a/m/b/l;->b:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/c/a/m/b/l;->b:Z

    return-void
.end method
