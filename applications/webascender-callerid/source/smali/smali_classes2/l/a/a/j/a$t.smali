.class final Ll/a/a/j/a$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/a/a/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/a/a/j/b<",
        "Ljava/lang/Enum<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Ll/a/a/j/a$t;->b(Ljava/lang/Enum;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method

.method public b(Ljava/lang/Enum;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "*>;>(TE;",
            "Ljava/lang/Appendable;",
            "Ll/a/a/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3, p2, p1}, Ll/a/a/f;->p(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method
