.class public final Le/a/b/a/a/c/e/b$a$c;
.super Le/a/b/a/a/c/e/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/a/c/e/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Le/a/b/a/a/c/e/b$a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b/a/a/c/e/b$a$c;

    invoke-direct {v0}, Le/a/b/a/a/c/e/b$a$c;-><init>()V

    sput-object v0, Le/a/b/a/a/c/e/b$a$c;->b:Le/a/b/a/a/c/e/b$a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/bizmon/R$string;->ProfileEditEmailInvalid:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/a/b/a/a/c/e/b$a;-><init>(ILs1/z/c/f;)V

    return-void
.end method
