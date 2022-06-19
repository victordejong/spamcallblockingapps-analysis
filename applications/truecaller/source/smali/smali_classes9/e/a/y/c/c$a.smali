.class public final Le/a/y/c/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/y/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/y/c/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/y/c/c$a;

    invoke-direct {v0}, Le/a/y/c/c$a;-><init>()V

    sput-object v0, Le/a/y/c/c$a;->b:Le/a/y/c/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/a/y/c/d;

    invoke-direct {v0}, Le/a/y/c/d;-><init>()V

    return-object v0
.end method
