.class public final Le/a/i/d0/d0/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/g;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/f0/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/d0/d0/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/d0/d0/g$b;

    invoke-direct {v0}, Le/a/i/d0/d0/g$b;-><init>()V

    sput-object v0, Le/a/i/d0/d0/g$b;->b:Le/a/i/d0/d0/g$b;

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
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "AFTERCALL|AFTER_CALL"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
