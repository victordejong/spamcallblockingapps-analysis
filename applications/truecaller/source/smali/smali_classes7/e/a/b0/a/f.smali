.class public final Le/a/b0/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/a/f$b;
    }
.end annotation


# static fields
.field public static c:Z = true

.field public static final d:Le/a/b0/a/f$b;


# instance fields
.field public final a:J

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b0/a/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/a/f$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/b0/a/f;->d:Le/a/b0/a/f$b;

    return-void
.end method

.method public constructor <init>(JLs1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doClick"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/b0/a/f;->a:J

    iput-object p3, p0, Le/a/b0/a/f;->b:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Le/a/b0/a/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Le/a/b0/a/f;->c:Z

    .line 3
    sget-object v0, Le/a/b0/a/f$a;->a:Le/a/b0/a/f$a;

    iget-wide v1, p0, Le/a/b0/a/f;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Le/a/b0/a/f;->b:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
