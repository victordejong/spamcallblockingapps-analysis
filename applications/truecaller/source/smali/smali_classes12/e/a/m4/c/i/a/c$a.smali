.class public final Le/a/m4/c/i/a/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/i/a/c;-><init>(Landroid/content/Context;Le/a/b0/o/a;Ls1/w/f;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/e/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/m4/c/i/a/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/m4/c/i/a/c$a;

    invoke-direct {v0}, Le/a/m4/c/i/a/c$a;-><init>()V

    sput-object v0, Le/a/m4/c/i/a/c$a;->b:Le/a/m4/c/i/a/c$a;

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
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    return-object v0
.end method
