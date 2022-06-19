.class public final Le/a/c/a/s/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/c/a/s/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/c/a/s/e;

    invoke-direct {v0}, Le/a/c/a/s/e;-><init>()V

    sput-object v0, Le/a/c/a/s/e;->b:Le/a/c/a/s/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
