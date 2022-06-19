.class Ll/a/a/j/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/a/a/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/a/a/j/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/a/a/j/b<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ll/a/a/j/a;)V
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
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Ll/a/a/j/a$d;->b(Ljava/util/Date;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method

.method public b(Ljava/util/Date;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 1
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Ll/a/a/h;->c(Ljava/lang/String;Ljava/lang/Appendable;Ll/a/a/f;)V

    .line 3
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method
