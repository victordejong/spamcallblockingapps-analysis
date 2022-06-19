.class public Le/k/a/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/b$a$a;
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/b$a$a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/b$a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/b$a;->a:Le/k/a/c/b$a$a;

    .line 3
    iput-object p2, p0, Le/k/a/c/b$a;->b:Ljava/lang/String;

    return-void
.end method
