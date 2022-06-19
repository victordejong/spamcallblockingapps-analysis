.class public final Le/a/r/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/c/r$b;,
        Le/a/r/c/r$d;,
        Le/a/r/c/r$e;,
        Le/a/r/c/r$f;,
        Le/a/r/c/r$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/wizard/internal/components/EditText$d;

.field public static final b:Lcom/truecaller/wizard/internal/components/EditText$d;

.field public static final c:Lcom/truecaller/wizard/internal/components/EditText$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/r/c/r$f;

    invoke-direct {v0}, Le/a/r/c/r$f;-><init>()V

    sput-object v0, Le/a/r/c/r;->a:Lcom/truecaller/wizard/internal/components/EditText$d;

    .line 2
    new-instance v0, Le/a/r/c/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/r/c/r$d;-><init>(Le/a/r/c/r$a;)V

    sput-object v0, Le/a/r/c/r;->b:Lcom/truecaller/wizard/internal/components/EditText$d;

    .line 3
    new-instance v0, Le/a/r/c/r$b;

    invoke-direct {v0, v1}, Le/a/r/c/r$b;-><init>(Le/a/r/c/r$a;)V

    sput-object v0, Le/a/r/c/r;->c:Lcom/truecaller/wizard/internal/components/EditText$d;

    return-void
.end method
