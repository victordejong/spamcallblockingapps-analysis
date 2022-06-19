.class public final Le/a/n/b$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/n/w1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/n/b;


# direct methods
.method public constructor <init>(Le/a/n/b;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b$d;->b:Le/a/n/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/a/n/w1;

    invoke-direct {v0, p0}, Le/a/n/w1;-><init>(Le/a/n/b$d;)V

    return-object v0
.end method
