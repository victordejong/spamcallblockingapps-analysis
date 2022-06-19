.class public final Le/a/l/g/q$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/g/q;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l/g/q$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/l/g/q$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/g/q$d;

    invoke-direct {v0}, Le/a/l/g/q$d;-><init>()V

    sput-object v0, Le/a/l/g/q$d;->b:Le/a/l/g/q$d;

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
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->PREMIUM:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/l/g/q$c;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/g/q$c;

    return-object v0
.end method
