//
//  CustomPageControl.swift
//  GOW_Localization
//
//  Created by OYuuyuMP on 06/09/24.
//

import UIKit

class CustomPageControl: UIPageControl {
    
    var currentCustomImage: UIImage?
    private var customImageViews: [UIImageView] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.isUserInteractionEnabled = false
        self.pageIndicatorTintColor = nil
        self.currentPageIndicatorTintColor = .clear
    }
    
    func setupCustomDots() {
        // Elimina las views anteriores (en caso de que sea necesario).
                for view in customImageViews {
                    view.removeFromSuperview()
                }
                customImageViews.removeAll()
        
            // Crea UIImageViews para cada página.
            for index in 0..<numberOfPages {
                let imageView = UIImageView()
                imageView.contentMode = .scaleAspectFit
                imageView.image = (index == currentPage) ? UIImage(named: "gow_logo") : nil
                addSubview(imageView)
                customImageViews.append(imageView)
            }
            
            // Coloca las imágenes en su posición.
            layoutCustomDots()
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            layoutCustomDots()
        }
    
    private func layoutCustomDots() {
        // Tamaños de los puntos activos e inactivos.
           let inactiveDotSize = CGSize(width: 7, height: 7)
           let activeDotSize = CGSize(width: 22, height: 22)
           
           // Espaciado fijo entre los puntos inactivos.
           let fixedSpacing: CGFloat = 12
           
           // Calcular el ancho total ocupado por los puntos inactivos y el espaciado entre ellos.
           let totalInactiveDotsWidth = CGFloat(numberOfPages) * inactiveDotSize.width
           let totalSpacingWidth = CGFloat(numberOfPages - 1) * fixedSpacing
           
           // Calcular el ancho total requerido incluyendo el tamaño del punto activo.
           let totalWidth = totalInactiveDotsWidth + totalSpacingWidth + (activeDotSize.width - inactiveDotSize.width)
           
           // Calcular el punto de inicio para centrar los puntos.
           let startX = (self.bounds.width - totalWidth) / 2.0
           
           for (index, imageView) in customImageViews.enumerated() {
               let isActive = index == currentPage
               let dotSize = isActive ? activeDotSize : inactiveDotSize
               
               // Calcular la posición x.
               let xPosition: CGFloat
               
               if isActive {
                   // Ajustar el espaciado para evitar solapamiento.
                   xPosition = startX + CGFloat(index) * (inactiveDotSize.width + fixedSpacing) + (fixedSpacing - (activeDotSize.width - inactiveDotSize.width) / 2.0)
               } else {
                   // Los puntos inactivos se colocan con espaciado fijo.
                   xPosition = startX + CGFloat(index) * (inactiveDotSize.width + fixedSpacing)
               }
               
               let yPosition = (self.bounds.height - dotSize.height) / 2.0 // Centrado vertical
               
               imageView.frame = CGRect(x: xPosition, y: yPosition, width: dotSize.width, height: dotSize.height)
               
               // Actualiza solo el punto activo con el logo, deja los inactivos con imagen `nil`.
               imageView.image = isActive ? UIImage(named: "gow_logo") : nil
           }
    }

    
    //Llamar a este método cuando se actualiza la página.
        func updateCurrentPage() {
            for (index, imageView) in customImageViews.enumerated() {
                        imageView.image = (index == currentPage) ? UIImage(named: "gow_logo") : nil // Actualiza solo el punto activo
                    }
        }
}


