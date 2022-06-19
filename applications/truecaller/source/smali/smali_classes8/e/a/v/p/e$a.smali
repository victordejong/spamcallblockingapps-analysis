.class public final Le/a/v/p/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/e;-><init>(Landroid/content/Context;Ls1/w/f;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/h/p0/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/v/p/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/v/p/e$a;

    invoke-direct {v0}, Le/a/v/p/e$a;-><init>()V

    sput-object v0, Le/a/v/p/e$a;->b:Le/a/v/p/e$a;

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
    sget-object v0, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v0}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v0

    invoke-interface {v0}, Le/a/l2;->b()Le/a/h/f/o;

    move-result-object v0

    check-cast v0, Le/a/t1$k;

    invoke-virtual {v0}, Le/a/t1$k;->a()Le/a/h/p0/c;

    move-result-object v0

    return-object v0
.end method
