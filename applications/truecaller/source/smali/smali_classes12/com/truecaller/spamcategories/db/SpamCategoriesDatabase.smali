.class public abstract Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008!\u0018\u0000 \u00072\u00020\u0001:\u0001\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase;",
        "Ln3/c0/q;",
        "Le/a/a0/x/a;",
        "a",
        "()Le/a/a0/x/a;",
        "<init>",
        "()V",
        "b",
        "spamcategories_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static a:Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase;

.field public static final b:Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase;->b:Lcom/truecaller/spamcategories/db/SpamCategoriesDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/a0/x/a;
.end method
