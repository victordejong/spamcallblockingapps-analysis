.class public final Le/a/l/a/h0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/h0;-><init>(Le/a/l/s2/a;Le/a/l/u2/a;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l/p2/t0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/l/a/h0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/a/h0$a;

    invoke-direct {v0}, Le/a/l/a/h0$a;-><init>()V

    sput-object v0, Le/a/l/a/h0$a;->b:Le/a/l/a/h0$a;

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

    const-class v1, Le/a/l/p2/t0;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/t0;

    return-object v0
.end method
