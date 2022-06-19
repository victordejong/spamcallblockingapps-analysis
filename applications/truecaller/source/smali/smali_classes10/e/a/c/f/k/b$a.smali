.class public abstract Le/a/c/f/k/b$a;
.super Le/a/c/r/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/f/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/f/k/b$a$a;,
        Le/a/c/f/k/b$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Le/a/c/r/c;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method
