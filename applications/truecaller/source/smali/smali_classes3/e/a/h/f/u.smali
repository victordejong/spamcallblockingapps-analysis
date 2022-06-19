.class public final Le/a/h/f/u;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/h/f/g;",
        "Le/a/h/f/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/h/f/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/h/f/u;

    invoke-direct {v0}, Le/a/h/f/u;-><init>()V

    sput-object v0, Le/a/h/f/u;->b:Le/a/h/f/u;

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
    check-cast p1, Le/a/h/f/g;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
