.class public final Le/a/d/d/a/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/d/a/a/c/c;",
        "Le/a/d/d/a/a/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/d/d/a/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/d/d/a/f;

    invoke-direct {v0}, Le/a/d/d/a/f;-><init>()V

    sput-object v0, Le/a/d/d/a/f;->b:Le/a/d/d/a/f;

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
    .locals 1

    .line 1
    check-cast p1, Le/a/d/d/a/a/c/c;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
