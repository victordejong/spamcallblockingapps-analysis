.class public final Le/a/o5/n1$a$b;
.super Le/a/o5/n1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/n1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final f:Le/a/o5/n1$a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o5/n1$a$b;

    invoke-direct {v0}, Le/a/o5/n1$a$b;-><init>()V

    sput-object v0, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const v1, 0x7f11020f

    const-string v2, "Truecaller Message"

    const-string v3, "Truecaller Message"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Le/a/o5/n1$a;-><init>(ILjava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method
