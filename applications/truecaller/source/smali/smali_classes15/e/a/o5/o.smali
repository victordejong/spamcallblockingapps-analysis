.class public final Le/a/o5/o;
.super Le/a/b0/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/o$a;
    }
.end annotation


# static fields
.field public static final e:Landroid/net/Uri;

.field public static f:Lq3/a/p1;

.field public static final g:Le/a/o5/o$a;


# instance fields
.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/o5/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/o5/o$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/o5/o;->g:Le/a/o5/o$a;

    .line 1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Le/a/o5/o;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Le/a/r2/f;Ls1/z/c/f;)V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-direct {p0, p1, v0, v1}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    .line 2
    iput-object p2, p0, Le/a/o5/o;->d:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/o;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0}, Le/a/l0/c;->y()V

    return-void
.end method
