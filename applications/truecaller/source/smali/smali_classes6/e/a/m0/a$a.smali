.class public final Le/a/m0/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m0/a;->c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/m0/a$a;

.field public static final d:Le/a/m0/a$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/m0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/m0/a$a;-><init>(I)V

    sput-object v0, Le/a/m0/a$a;->c:Le/a/m0/a$a;

    new-instance v0, Le/a/m0/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/m0/a$a;-><init>(I)V

    sput-object v0, Le/a/m0/a$a;->d:Le/a/m0/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/m0/a$a;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/m0/a$a;->b:I

    const-string v1, "?"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    check-cast p1, Ljava/lang/String;

    return-object v1
.end method
