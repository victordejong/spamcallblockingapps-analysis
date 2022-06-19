.class public Ln3/m0/c0/p/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ln3/m0/c0/p/b/e;

.field public final d:Ln3/m0/c0/q/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/p/b/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILn3/m0/c0/p/b/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/p/b/c;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Ln3/m0/c0/p/b/c;->b:I

    .line 4
    iput-object p3, p0, Ln3/m0/c0/p/b/c;->c:Ln3/m0/c0/p/b/e;

    .line 5
    iget-object p2, p3, Ln3/m0/c0/p/b/e;->b:Ln3/m0/c0/t/x/a;

    .line 6
    new-instance p3, Ln3/m0/c0/q/d;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Ln3/m0/c0/q/d;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;Ln3/m0/c0/q/c;)V

    iput-object p3, p0, Ln3/m0/c0/p/b/c;->d:Ln3/m0/c0/q/d;

    return-void
.end method
