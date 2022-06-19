.class public Le/m/b/y/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/y/a/a$b$d;,
        Le/m/b/y/a/a$b$c;,
        Le/m/b/y/a/a$b$b;,
        Le/m/b/y/a/a$b$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/b/y/a/a;


# direct methods
.method public constructor <init>(Le/m/b/y/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
