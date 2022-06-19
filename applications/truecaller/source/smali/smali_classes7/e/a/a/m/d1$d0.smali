.class public final Le/a/a/m/d1$d0;
.super Le/a/a/m/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/m/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d0"
.end annotation


# static fields
.field public static final b:Le/a/a/m/d1$d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/m/d1$d0;

    invoke-direct {v0}, Le/a/a/m/d1$d0;-><init>()V

    sput-object v0, Le/a/a/m/d1$d0;->b:Le/a/a/m/d1$d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "WhatsAppCallerIdPromo"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/a/m/d1;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
