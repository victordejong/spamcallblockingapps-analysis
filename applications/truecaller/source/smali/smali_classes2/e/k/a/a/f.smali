.class public interface abstract annotation Le/k/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Le/k/a/a/f;
        creatorVisibility = .enum Le/k/a/a/f$a;->f:Le/k/a/a/f$a;
        fieldVisibility = .enum Le/k/a/a/f$a;->f:Le/k/a/a/f$a;
        getterVisibility = .enum Le/k/a/a/f$a;->f:Le/k/a/a/f$a;
        isGetterVisibility = .enum Le/k/a/a/f$a;->f:Le/k/a/a/f$a;
        setterVisibility = .enum Le/k/a/a/f$a;->f:Le/k/a/a/f$a;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/a/f$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract creatorVisibility()Le/k/a/a/f$a;
.end method

.method public abstract fieldVisibility()Le/k/a/a/f$a;
.end method

.method public abstract getterVisibility()Le/k/a/a/f$a;
.end method

.method public abstract isGetterVisibility()Le/k/a/a/f$a;
.end method

.method public abstract setterVisibility()Le/k/a/a/f$a;
.end method
