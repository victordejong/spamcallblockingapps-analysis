.class public final Le/a/i/f0/e$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/e;-><init>(Ls1/w/f;Le/a/r2/f;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/i/f0/l/j;Le/a/i/f0/n/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/f0/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/f0/e$b;

    invoke-direct {v0}, Le/a/i/f0/e$b;-><init>()V

    sput-object v0, Le/a/i/f0/e$b;->b:Le/a/i/f0/e$b;

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
    new-instance v0, Le/a/p5/k;

    invoke-direct {v0}, Le/a/p5/k;-><init>()V

    return-object v0
.end method
