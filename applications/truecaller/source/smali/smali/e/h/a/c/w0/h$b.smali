.class public Le/h/a/c/w0/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/w0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Le/h/a/c/w0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/h/a/c/w0/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/h/a/c/w0/h;-><init>(Le/h/a/c/w0/h$a;)V

    sput-object v0, Le/h/a/c/w0/h$b;->a:Le/h/a/c/w0/h;

    return-void
.end method
